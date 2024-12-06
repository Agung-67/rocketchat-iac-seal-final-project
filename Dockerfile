# Gunakan image Node.js resmi sebagai base image
FROM node:14

# Tentukan direktori kerja di dalam container
WORKDIR /app

# Salin file package.json dan package-lock.json ke dalam direktori kerja
COPY package*.json ./

# Install dependensi aplikasi
RUN npm install

# Salin seluruh kode aplikasi ke dalam direktori kerja
COPY . .

# Tentukan port yang akan digunakan oleh aplikasi
EXPOSE 3000

# Jalankan aplikasi
CMD ["node", "app.js"]
