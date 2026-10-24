.class public final Lcom/shabakaty/downloader/k06;
.super Lcom/shabakaty/downloader/qi5;


# instance fields
.field public A:Z

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Z

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fj5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/qi5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    return-void
.end method


# virtual methods
.method public final M1()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->U0()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "PackageManager doesn\'t know about the app package"

    .line 4
    invoke-virtual {p0, v2, v0}, Lcom/shabakaty/downloader/fq1;->E1(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "Couldn\'t get ApplicationInfo to load global config"

    .line 5
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/fq1;->I1(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    const-string v2, "com.google.android.gms.analytics.globalConfigResource"

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/zt5;

    .line 9
    iget-object v3, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/fj5;

    .line 10
    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/zt5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 11
    :try_start_1
    iget-object v3, v2, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/fj5;

    .line 12
    iget-object v3, v3, Lcom/shabakaty/downloader/fj5;->b:Landroid/content/Context;

    .line 13
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/fq5;->K1(Landroid/content/res/XmlResourceParser;)Lcom/shabakaty/downloader/mu5;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "inflate() called with unknown resourceId"

    .line 14
    invoke-virtual {v2, v3, v0}, Lcom/shabakaty/downloader/fq1;->E1(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    if-eqz v1, :cond_e

    const-string v0, "Loading global XML config values"

    .line 15
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    .line 16
    iget-object v0, v1, Lcom/shabakaty/downloader/mu5;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_2

    .line 17
    iput-object v0, p0, Lcom/shabakaty/downloader/k06;->w:Ljava/lang/String;

    const-string v4, "XML config - app name"

    .line 18
    invoke-virtual {p0, v4, v0}, Lcom/shabakaty/downloader/fq1;->m1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    :cond_2
    iget-object v0, v1, Lcom/shabakaty/downloader/mu5;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_4

    .line 20
    iput-object v0, p0, Lcom/shabakaty/downloader/k06;->v:Ljava/lang/String;

    const-string v4, "XML config - app version"

    .line 21
    invoke-virtual {p0, v4, v0}, Lcom/shabakaty/downloader/fq1;->m1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    :cond_4
    iget-object v0, v1, Lcom/shabakaty/downloader/mu5;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    const/4 v5, -0x1

    if-eqz v4, :cond_a

    .line 23
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "verbose"

    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    const-string v4, "info"

    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const-string v4, "warning"

    .line 26
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v0, 0x2

    goto :goto_5

    :cond_8
    const-string v4, "error"

    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_5

    :cond_9
    const/4 v0, -0x1

    :goto_5
    if-ltz v0, :cond_a

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "XML config - log level"

    invoke-virtual {p0, v4, v0}, Lcom/shabakaty/downloader/fq1;->k1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    :cond_a
    iget v0, v1, Lcom/shabakaty/downloader/mu5;->d:I

    if-ltz v0, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_c

    .line 30
    iput v0, p0, Lcom/shabakaty/downloader/k06;->y:I

    .line 31
    iput-boolean v3, p0, Lcom/shabakaty/downloader/k06;->x:Z

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "XML config - dispatch period (sec)"

    invoke-virtual {p0, v4, v0}, Lcom/shabakaty/downloader/fq1;->m1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    :cond_c
    iget v0, v1, Lcom/shabakaty/downloader/mu5;->e:I

    if-eq v0, v5, :cond_e

    if-ne v0, v3, :cond_d

    const/4 v2, 0x1

    .line 34
    :cond_d
    iput-boolean v2, p0, Lcom/shabakaty/downloader/k06;->A:Z

    .line 35
    iput-boolean v3, p0, Lcom/shabakaty/downloader/k06;->z:Z

    .line 36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "XML config - dry run"

    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/fq1;->m1(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method
