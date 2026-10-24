.class public final Lcom/shabakaty/downloader/g17;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# static fields
.field public static a:Lcom/shabakaty/downloader/c17;

.field public static final b:Lcom/shabakaty/downloader/ou5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ou5<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "play-services-mlkit-image-labeling"

    const-string v1, "play-services-mlkit-text-recognition"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1
    sget v1, Lcom/shabakaty/downloader/ou5;->t:I

    const/16 v1, 0x8

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "common"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "vision-common"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "play-services-mlkit-barcode-scanning"

    aput-object v5, v2, v4

    const/4 v5, 0x3

    const-string v6, "barcode-scanning"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "play-services-mlkit-face-detection"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-string v6, "face-detection"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    .line 2
    invoke-static {v0, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/ou5;->q(I[Ljava/lang/Object;)Lcom/shabakaty/downloader/ou5;

    move-result-object v0

    .line 4
    sput-object v0, Lcom/shabakaty/downloader/g17;->b:Lcom/shabakaty/downloader/ou5;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/shabakaty/downloader/l07;
    .locals 4

    const-class v0, Lcom/shabakaty/downloader/g17;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lcom/shabakaty/downloader/ty6;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/ty6;-><init>(I)V

    const-string v3, "Null libraryName"

    .line 2
    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p0, v1, Lcom/shabakaty/downloader/ty6;->a:Ljava/lang/Object;

    .line 3
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/shabakaty/downloader/ty6;->b:Ljava/lang/Object;

    .line 4
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/shabakaty/downloader/ty6;->c:Ljava/lang/Object;

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/tf3;->s:Lcom/shabakaty/downloader/tf3;

    .line 6
    iput-object v3, v1, Lcom/shabakaty/downloader/ty6;->d:Ljava/lang/Object;

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shabakaty/downloader/ty6;->e:Ljava/lang/Object;

    .line 8
    sget-object v2, Lcom/shabakaty/downloader/g17;->b:Lcom/shabakaty/downloader/ou5;

    .line 9
    invoke-virtual {v2, p0}, Lcom/shabakaty/downloader/cs5;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 10
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v1, Lcom/shabakaty/downloader/ty6;->b:Ljava/lang/Object;

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ty6;->a()Lcom/shabakaty/downloader/cz6;

    move-result-object p0

    .line 12
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/shabakaty/downloader/g17;->a:Lcom/shabakaty/downloader/c17;

    if-nez v1, :cond_0

    .line 13
    new-instance v1, Lcom/shabakaty/downloader/c17;

    invoke-direct {v1}, Lcom/shabakaty/downloader/c17;-><init>()V

    sput-object v1, Lcom/shabakaty/downloader/g17;->a:Lcom/shabakaty/downloader/c17;

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/g17;->a:Lcom/shabakaty/downloader/c17;

    .line 14
    invoke-virtual {v1, p0}, Lcom/shabakaty/downloader/rf2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/l07;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 16
    :try_start_3
    monitor-exit v0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
