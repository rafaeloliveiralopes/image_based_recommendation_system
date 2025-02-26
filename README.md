# Sistema de Recomendação Baseada em Imagens

## Sobre o Projeto
Este projeto é um **sistema de recomendação baseado em imagens** que utiliza **Redes Neurais Convolucionais (CNNs)** para extrair características visuais de imagens e encontrar as mais similares dentro de um conjunto de dados.

A solução emprega a **ResNet50** pré-treinada para a extração de features e um modelo **Nearest Neighbors (KNN)** para a busca de imagens semelhantes.

---

## 🚀 Tecnologias Utilizadas
- **Python**
- **TensorFlow / Keras**
- **OpenCV**
- **Matplotlib**
- **scikit-learn**
- **NumPy**

---

## Como Funciona
O sistema segue os seguintes passos:

1. **Carregamento das imagens**: Lista os arquivos da pasta `images/`.
2. **Extração de características**: Usa a **ResNet50** (sem a camada final) para gerar embeddings das imagens.
3. **Treinamento do modelo KNN**: Ajusta um modelo de **Nearest Neighbors** para encontrar imagens mais similares.
4. **Consulta de imagem**: Dado um arquivo de imagem, o sistema busca no banco de dados as imagens mais parecidas.
5. **Exibição dos resultados**: Mostra a imagem de consulta e as mais similares.

---

## 🔧 Como Executar o Projeto
### 1️⃣ Clone o Repositório
```bash
git clone https://github.com/seu-usuario/image_based_recommendation_system.git
cd image_based_recommendation_system
```

### 2️⃣ Crie e Ative um Ambiente Virtual (Opcional)
```bash
python -m venv ml_env
source ml_env/bin/activate  # Linux/macOS
ml_env\Scripts\activate    # Windows
```

### 3️⃣ Instale as Dependências
```bash
pip install -r requirements.txt
```

### 4️⃣ Execute o Jupyter Notebook
```bash
jupyter notebook
```
Abra o arquivo `image_based_recommendation_system.ipynb` e execute as células.

---

## Exemplo de Uso
Para consultar uma imagem específica:
```python
query_image_path = "images/consulta.jpg"
distances, indices = neighbors.kneighbors([extract_features_from_images(query_image_path, model)])
```
Isso retornará os arquivos mais similares com base nas características extraídas pela **ResNet50**.

---

## 📌 Contribuição
Sinta-se à vontade para abrir issues ou pull requests para melhorias no projeto!

---

## 📬 Contato
🔹 **Autor:** Rafael Oliveira Lopes  
🔹 **Email:** rafaellopes.dev@email.com  
🔹 **LinkedIn:** [LinkedIn]([https://github.com/seu-usuario](https://www.linkedin.com/in/rafael-lopes-desenvolvedor-fullstack/))  

