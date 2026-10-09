/* 
Name: Reynoldson Ganing Anak Alfred Jabu
Number Matric: 102936
Course: TMF3084 Software Engineering Lab
Group: 1
Lab Task: Create a Pizza Order Program
*/

import 'dart:io';
void main() {
  bool keepOrdering = true;

  while (keepOrdering) {
    print('\n=== Pizza Order Calculator ===');
    print('Prices: Small = \RM5 | Medium = \RM7 | Large = \RM10');
    stdout.write('Enter pizza size (S/M/L) or type "Q" to quit: ');
    
    String? size = stdin.readLineSync()?.toUpperCase();

    // Exit condition
    if (size == 'Q') {
      keepOrdering = false;
      print('Thank you! Exiting calculator...');
      break;
    }

    int price = 0;

    // Switch case for size pricing
    switch (size) {
      case 'S':
        price = 5;
        break;
      case 'M':
        price = 7;
        break;
      case 'L':
        price = 10;
        break;
      default:
        print('Invalid size. Please enter S, M, or L.');
        continue; // Restart the loop if input is invalid
    }

    stdout.write('Enter quantity: ');
    String? qtyInput = stdin.readLineSync();
    int? quantity = int.tryParse(qtyInput ?? '');

    if (quantity == null || quantity <= 0) {
      print('Invalid quantity. Please enter a valid number.');
      continue; // Restart the loop if input is invalid
    }

    // Calculate and print total
    int total = price * quantity;
    print('----------------------------------');
    print('Total payment: \RM$total');
    print('----------------------------------');
  }
}