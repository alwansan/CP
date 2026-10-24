.class public final Lcom/shabakaty/cinemana/mod/SubtitlePreviewHelper;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static base64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private static getDefaultSubtitle(Landroid/content/Context;Ljava/util/List;)Lcom/shabakaty/cinemana/domain/models/local/Subtitle;
    .locals 7

    invoke-static {p0}, Lcom/shabakaty/downloader/df3;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cinemana_preview_subtitle_language"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    iget-object v6, v5, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->type:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "key_preferred_subtitle_language"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    iget-object v6, v5, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->type:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-object v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    return-object v3

    :cond_4
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    return-object v3
.end method

.method public static showCurrentSubtitleChooser(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->getVideoModel()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->resolve(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->subtitles:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-static {v2}, Lcom/shabakaty/cinemana/features/SubtitleCompat131;->importedOnly(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->getPlayer()Lcom/shabakaty/downloader/s64;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/cinemana/features/SubtitleCompat131;->appendPreservingImported(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->subtitles:Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0, p0, v2}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewHelper;->showSubtitleChooser(Landroid/content/Context;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 10

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v1, "utf-8"

    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewHelper;->base64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->playerSurface(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->hex(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->hex(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->elevated(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->hex(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->edge(Landroid/content/Context;)I

    move-result v8

    invoke-static {v8}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->hex(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->accent(Landroid/content/Context;)I

    move-result v9

    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->hex(I)Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head><meta charset=\'utf-8\'><meta name=\'viewport\' content=\'width=device-width,initial-scale=1\'><style>body{margin:0;background:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";color:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";font-family:sans-serif}.bar{position:sticky;top:0;background:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";padding:12px 16px;font-size:16px;font-weight:bold;border-bottom:1px solid "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";z-index:5}.cue{padding:10px 14px;margin:4px 8px;border-radius:8px;line-height:1.55;font-size:17px}.cue.active{background:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";outline:1px solid "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}</style></head><body><div id=\'now\' class=\'bar\'>\u0627\u0644\u0648\u0642\u062a \u0627\u0644\u062d\u0627\u0644\u064a: 00:00</div><div id=\'list\'></div><script>const raw=decodeURIComponent(escape(atob(\'"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\')));function ms(t){t=(t||\'\').trim().replace(\',\', \'.\');let a=t.split(\':\');if(a.length===2)return Math.round(parseFloat(a[0])*60000+parseFloat(a[1])*1000);if(a.length>=3)return Math.round(parseFloat(a[a.length-3])*3600000+parseFloat(a[a.length-2])*60000+parseFloat(a[a.length-1])*1000);return 0}function clean(s){return(s||\'\').replace(/\\{[^}]*\\}/g,\'\').replace(/\\\\N/g,\'\\n\').replace(/\\\\n/g,\'\\n\').replace(/<br[^>]*>/gi,\'\\n\').replace(/<[^>]+>/g,\'\').trim()}let blocks=[];function addCue(a,b,text){text=clean(text);if(!(b>a)||!text)return;let d=document.createElement(\'div\');d.className=\'cue\';d.textContent=text;document.getElementById(\'list\').appendChild(d);blocks.push({a:a,b:b,e:d})}let src=raw.replace(/\\r/g,\'\');let re=/((?:\\d{2}:)?\\d{2}:\\d{2}[.,]\\d{3})\\s+-->\\s+((?:\\d{2}:)?\\d{2}:\\d{2}[.,]\\d{3})(?:[^\\n]*)\\n([\\s\\S]*?)(?=\\n\\s*\\n|$)/g;let m;while((m=re.exec(src))!==null)addCue(ms(m[1]),ms(m[2]),m[3]);if(!blocks.length){let lines=src.split(\'\\n\');for(let k=0;k<lines.length;k++){let line=lines[k];if(/^\\s*Dialogue\\s*:/i.test(line)){let p=line.replace(/^\\s*Dialogue\\s*:\\s*/i,\'\').split(\',\');if(p.length>=10)addCue(ms(p[1]),ms(p[2]),p.slice(9).join(\',\'))}}}let last=-1;function fmt(msv){let sec=Math.max(0,Math.floor(msv/1000));let h=Math.floor(sec/3600);let m=Math.floor((sec%3600)/60);let x=sec%60;return String(h).padStart(2,\'0\')+\':\'+String(m).padStart(2,\'0\')+\':\'+String(x).padStart(2,\'0\')}window.setCurrent=function(t){document.getElementById(\'now\').textContent=\'\u0627\u0644\u0648\u0642\u062a \u0627\u0644\u062d\u0627\u0644\u064a: \'+fmt(t);let i=-1;for(let k=0;k<blocks.length;k++){if(t>=blocks[k].a&&t<=blocks[k].b){i=k;break}}if(i<0&&blocks.length){let best=0,dist=Infinity;for(let k=0;k<blocks.length;k++){let c=t<blocks[k].a?blocks[k].a-t:t>blocks[k].b?t-blocks[k].b:0;if(c<dist){dist=c;best=k}}if(dist<4000)i=best}if(i!==last){if(last>=0)blocks[last].e.classList.remove(\'active\');if(i>=0){blocks[i].e.classList.add(\'active\');blocks[i].e.scrollIntoView({block:\'center\',behavior:\'smooth\'})}last=i}};</script></body></html>"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const-string v7, ""

    const-string v8, ""

    move-object v1, v7

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "\u0645\u0639\u0627\u064a\u0646\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0629"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "\u0625\u063a\u0644\u0627\u0642"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "\u062a\u063a\u064a\u064a\u0631 \u0627\u0644\u062a\u0631\u062c\u0645\u0629"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/shabakaty/cinemana/mod/SubtitlePreviewChooserClickListener;

    invoke-direct {v6, p0, p2}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewChooserClickListener;-><init>(Landroid/content/Context;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/Ui7;->show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v4

    new-instance v5, Lcom/shabakaty/cinemana/mod/SubtitlePreviewUpdater;

    invoke-direct {v5, v0, p2, v4}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewUpdater;-><init>(Landroid/webkit/WebView;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;Landroid/app/AlertDialog;)V

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static showPreview(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->getVideoModel()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "\u0645\u0644\u0641 \u0627\u0644\u062a\u0631\u062c\u0645\u0629 \u063a\u064a\u0631 \u0645\u062a\u0627\u062d \u0644\u0644\u0642\u0631\u0627\u0621\u0629 \u0645\u0646 \u0627\u0644\u0645\u0633\u0627\u0631 \u0627\u0644\u062d\u0627\u0644\u064a."

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    return-void

    :cond_1
    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/LocalMkvResolver;->resolve(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->subtitles:Ljava/util/List;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-static {v3}, Lcom/shabakaty/cinemana/features/SubtitleCompat131;->importedOnly(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->getPlayer()Lcom/shabakaty/downloader/s64;

    move-result-object v6

    invoke-static {v0, v1, v3, v6}, Lcom/shabakaty/cinemana/features/SubtitleCompat131;->appendPreservingImported(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewHelper;->getDefaultSubtitle(Landroid/content/Context;Ljava/util/List;)Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, v4, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-static {v0, p0, v5}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewHelper;->startSourcePreview(Landroid/content/Context;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v3, "\u0644\u0645 \u064a\u062a\u0645 \u0627\u0644\u0639\u062b\u0648\u0631 \u0639\u0644\u0649 \u0645\u0633\u0627\u0631 \u062a\u0631\u062c\u0645\u0629 \u0645\u0636\u0645\u0646 \u0642\u0627\u0628\u0644 \u0644\u0644\u0645\u0639\u0627\u064a\u0646\u0629 \u062f\u0627\u062e\u0644 \u0645\u0644\u0641 MKV \u0627\u0644\u0645\u062d\u0644\u064a."

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p0}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    return-void

    :cond_4
    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->subtitles:Ljava/util/List;

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/features/EmbeddedMkvSubtitles;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewHelper;->getDefaultSubtitle(Landroid/content/Context;Ljava/util/List;)Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v5, v4, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-static {v0, p0, v5}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewHelper;->startSourcePreview(Landroid/content/Context;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v3, "\u0644\u0627 \u062a\u0648\u062c\u062f \u062a\u0631\u062c\u0645\u0629 \u0642\u0627\u0628\u0644\u0629 \u0644\u0644\u0645\u0639\u0627\u064a\u0646\u0629 \u0644\u0644\u062d\u0644\u0642\u0629 \u0627\u0644\u062d\u0627\u0644\u064a\u0629."

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p0}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewHelper;->showDialog(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    return-void
.end method

.method public static showSubtitleChooser(Landroid/content/Context;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;Ljava/util/List;)V
    .locals 8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    iget-object v4, v3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->extention:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_2

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_2

    :cond_3
    const-string v4, "\u062a\u0631\u062c\u0645\u0629"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, -0x1

    invoke-static {p0}, Lcom/shabakaty/downloader/df3;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "key_preferred_subtitle_language"

    const/4 v4, 0x0

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_6

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    check-cast v7, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    iget-object v7, v7, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v5, v4

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u0645\u0639\u0627\u064a\u0646\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0629 - \u0627\u062e\u062a\u0631 \u0627\u0644\u062a\u0631\u062c\u0645\u0629"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/shabakaty/cinemana/mod/SubtitlePreviewChoiceListener;

    invoke-direct {v3, p0, p1, p2}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewChoiceListener;-><init>(Landroid/content/Context;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;Ljava/util/List;)V

    move v4, v5

    invoke-virtual {v2, v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u0625\u0644\u063a\u0627\u0621"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Ui7;->show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    return-void
.end method

.method public static startSourcePreview(Landroid/content/Context;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;

    invoke-direct {v0, p0, p2, p1}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
