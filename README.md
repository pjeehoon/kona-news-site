# KONA News Site

🌐 KONA 프로젝트의 배포용 저장소입니다.

## 📖 소개

이 저장소는 [KONA (Korean Open News by AI)](https://github.com/pjeehoon/kona-news) 프로젝트에서 자동 생성된 뉴스 기사를 호스팅하는 정적 웹사이트입니다.

## 🔄 작동 방식

```
1. KONA 메인 프로젝트에서 AI가 뉴스 생성
   ↓
2. GitHub Actions가 자동으로 이 저장소에 푸시
   ↓
3. Cloudflare Pages가 변경사항 감지
   ↓
4. 자동으로 웹사이트 배포
```

## 📁 폴더 구조

```
kona-news-site/
├── index.html          # 메인 페이지
├── articles/           # 생성된 기사 JSON 파일들
└── README.md          # 이 파일
```

## 🚀 배포 정보

- **호스팅**: Cloudflare Pages
- **도메인**: [추후 설정 예정]
- **업데이트**: 매일 오전 9시 (한국시간) 자동 업데이트

## ⚠️ 주의사항

- 이 저장소의 파일들은 자동으로 생성됩니다
- 직접 수정하지 마세요 (다음 배포시 덮어쓰여집니다)
- 수정이 필요한 경우 [메인 프로젝트](https://github.com/pjeehoon/kona-news)에서 작업하세요

## 📜 라이선스

이 프로젝트는 KONA Custom License 하에 배포됩니다.
- ✅ 개인 학습 및 연구 목적 사용 가능
- ❌ 상업적 사용 금지
- 자세한 내용은 [메인 프로젝트의 LICENSE](https://github.com/pjeehoon/kona-news/blob/main/LICENSE) 참조

## 🔗 관련 링크

- [KONA 메인 프로젝트](https://github.com/pjeehoon/kona-news)
- [문제 신고](https://github.com/pjeehoon/kona-news/issues)

---

*이 저장소는 GitHub Actions에 의해 자동으로 업데이트됩니다.*