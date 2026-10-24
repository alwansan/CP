.class public Lcom/shabakaty/downloader/uc1;
.super Lcom/shabakaty/downloader/sb3;
.source "FirebasePerfApplicationInfoValidator.java"


# static fields
.field public static final b:Lcom/shabakaty/downloader/i7;


# instance fields
.field public final a:Lcom/shabakaty/downloader/mc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/i7;->d()Lcom/shabakaty/downloader/i7;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uc1;->b:Lcom/shabakaty/downloader/i7;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/mc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/sb3;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/uc1;->a:Lcom/shabakaty/downloader/mc;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uc1;->a:Lcom/shabakaty/downloader/mc;

    const/4 v1, 0x1

    const-string v2, "FirebasePerformance"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/uc1;->b:Lcom/shabakaty/downloader/i7;

    .line 3
    iget-boolean v4, v0, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v4, :cond_0

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ApplicationInfo is null"

    .line 5
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mc;->L()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/uc1;->b:Lcom/shabakaty/downloader/i7;

    .line 8
    iget-boolean v4, v0, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v4, :cond_0

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GoogleAppId is null"

    .line 10
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/uc1;->a:Lcom/shabakaty/downloader/mc;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mc;->J()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/uc1;->b:Lcom/shabakaty/downloader/i7;

    .line 13
    iget-boolean v4, v0, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v4, :cond_0

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AppInstanceId is null"

    .line 15
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/uc1;->a:Lcom/shabakaty/downloader/mc;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mc;->K()Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    sget-object v0, Lcom/shabakaty/downloader/uc1;->b:Lcom/shabakaty/downloader/i7;

    .line 18
    iget-boolean v4, v0, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v4, :cond_0

    .line 19
    iget-object v0, v0, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ApplicationProcessState is null"

    .line 20
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/uc1;->a:Lcom/shabakaty/downloader/mc;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mc;->I()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    iget-object v0, p0, Lcom/shabakaty/downloader/uc1;->a:Lcom/shabakaty/downloader/mc;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mc;->G()Lcom/shabakaty/downloader/x6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x6;->F()Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    sget-object v0, Lcom/shabakaty/downloader/uc1;->b:Lcom/shabakaty/downloader/i7;

    .line 24
    iget-boolean v4, v0, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v4, :cond_0

    .line 25
    iget-object v0, v0, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AndroidAppInfo.packageName is null"

    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/uc1;->a:Lcom/shabakaty/downloader/mc;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mc;->G()Lcom/shabakaty/downloader/x6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/x6;->G()Z

    move-result v0

    if-nez v0, :cond_6

    .line 28
    sget-object v0, Lcom/shabakaty/downloader/uc1;->b:Lcom/shabakaty/downloader/i7;

    .line 29
    iget-boolean v4, v0, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v4, :cond_0

    .line 30
    iget-object v0, v0, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AndroidAppInfo.sdkVersion is null"

    .line 31
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_8

    .line 32
    sget-object v0, Lcom/shabakaty/downloader/uc1;->b:Lcom/shabakaty/downloader/i7;

    .line 33
    iget-boolean v1, v0, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v1, :cond_7

    .line 34
    iget-object v0, v0, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ApplicationInfo is invalid"

    .line 35
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v3

    :cond_8
    return v1
.end method
