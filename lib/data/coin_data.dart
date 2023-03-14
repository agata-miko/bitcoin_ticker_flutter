//TODO: Add your imports here.
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://api.coingecko.com/api/v3/exchange_rates';


class CoinData {
  //TODO: Create your getCoinData() method here.
  Future<int> getCoinData(String selectedCurrency) async {
    var response = await http.get(Uri.parse(coinAPIURL));
    final responseData = json.decode(response.body);
    final value = responseData['rates'][selectedCurrency.toLowerCase()]['value'];
    return value.toInt();
  }
}
