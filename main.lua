local function main()

math.randomseed(os.time())
local angka = math.random(1, 100)

local selesai = false
local attempt = 0

while not selesai and attempt < 3 do
    print("apa tebakanmu: ")
    local tebak = io.read("*n")

        if tebak ~= nil then
        attempt = attempt + 1
    end
    
    if tebak < angka then
        print("terlalu rendah! coba lagi")
    elseif tebak > angka then
        print("terlalu tinggi, coba lagi")
    else print("tebakanmu benar")
        selesai = true
    end

        if attempt == 3 and tebak ~= angka then
            print("jawabannya adalah: " .. angka .. "\n")
            print("kamu salah sebanyak " .. attempt .. "x, percobaan mu selesai")
        end
        
    end

    _= io.read("*l")
    print("mau lanjut bermain? [Y/N]")
    local lanjut = io.read()

    if lanjut == 'Y' or lanjut == 'y' then
        selesai = false
    elseif lanjut == 'N' or lanjut == 'n' then
        selesai = true
    end

end

main()