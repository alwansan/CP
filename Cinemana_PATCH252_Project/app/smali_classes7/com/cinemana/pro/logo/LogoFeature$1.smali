.class Lcom/cinemana/pro/logo/LogoFeature$1;
.super Ljava/lang/Object;
.source "LogoFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cinemana/pro/logo/LogoFeature;->init(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 38
    const-string v0, "cinemeta_manifest.json"

    :try_start_0
    invoke-static {}, Lcom/cinemana/pro/logo/LogoFeature;->access$000()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 40
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/cinemana/pro/logo/TmdbLogo;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 41
    :cond_0
    const-string v1, "https://v3-cinemeta.strem.io/manifest.json"

    const/16 v2, 0x1194

    invoke-static {v1, v2}, Lcom/cinemana/pro/logo/LogoFeature;->access$100(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 42
    const-string v2, "\"resources\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\"meta\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v2, v3}, Lcom/cinemana/pro/logo/LogoFeature;->access$200(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Lcom/cinemana/pro/logo/LogoFeature;->access$300(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 46
    :catchall_1
    move-exception v0

    :cond_1
    :goto_1
    nop

    .line 47
    return-void
.end method
