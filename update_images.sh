#!/bin/bash

# Função para converter imagem para base64
img_to_base64() {
    local file=$1
    if [ -f "$file" ]; then
        echo "data:image/$(file -b --mime-type "$file" | cut -d'/' -f2);base64,$(base64 -w0 "$file")"
    else
        echo "FILE_NOT_FOUND"
    fi
}

echo "Script pronto para processar imagens"
