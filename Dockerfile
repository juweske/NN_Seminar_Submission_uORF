FROM conda/miniconda3:latest

COPY . .

ENV PATH /opt/conda/bin:$PATH

EXPOSE 8077

RUN conda env create -f environment.yml

CMD ["conda", "run", "-n", "uorf", "/bin/bash", "/scripts/eval_nvs_seg_clevr.sh"]
