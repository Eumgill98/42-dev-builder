# 42-dev-builder
🔥42-dev-builder

## 0. Add 42_header info
- [42_header](https://github.com/42Paris/42header)  

### 0.1 change your e-mail, user info in `header_info.txt`
```text
export USER=intraID
export MAIL=$USER@student.gyeongsan.kr
```

## 1. builder docker-compose
```bash
docker-compose up -d
```

## 2. start ubuntu

```bash
docker-compose exec 42_dev_builder bash
```

## 3. stop docker container 

```bash
docker-compose down -v
```

## 4. Please save your source code in `/42/`
- If you save to that path(`/42/`) **in your docker container Ubuntu**, it will automatically save locally as well (because it's **mounted**) 
- It save your local path (`./42/`)
- If you want to rename the folder to be mounted, modify the `volumes` part of the `docker-compose.yaml`
```yaml
...
 container_name: ubuntu_2204_container
    volumes:
      - ./42:/42
    tty: true
...
```

## To do
- [ ] install `norminette`