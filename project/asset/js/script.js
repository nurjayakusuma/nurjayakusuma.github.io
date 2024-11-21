const voucherBtn = document.querySelector('.voucherBtn');

voucherBtn.addEventListener('click', function() {
    let voucher = document.getElementById('voucher').value;

    if (voucher === 'rumahkingkong') {
        location.href = 'https://nurjayakusuma.github.io/project/success/success.html'; // Redirect
        document.getElementById('voucher').value = ''; // Kosongkan input voucher
    } 
});

