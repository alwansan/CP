.class public final Lcom/google/android/exoplayer2/source/rtsp/c;
.super Ljava/lang/Object;
.source "RtspAuthenticationInfo.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/rtsp/h$a;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 12

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->a:I

    const-string v1, ":"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    :try_start_0
    const-string v0, "MD5"

    .line 2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 3
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/rtsp/h;->e(I)Ljava/lang/String;

    move-result-object p3

    .line 4
    iget-object v7, p1, Lcom/google/android/exoplayer2/source/rtsp/h$a;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->b:Ljava/lang/String;

    iget-object v9, p1, Lcom/google/android/exoplayer2/source/rtsp/h$a;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/rtsp/h;->a(Ljava/lang/String;)[B

    move-result-object v7

    .line 6
    invoke-virtual {v0, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 7
    invoke-static {v7}, Lcom/shabakaty/downloader/sy4;->U([B)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 9
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/rtsp/h;->a(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p3

    invoke-static {p3}, Lcom/shabakaty/downloader/sy4;->U([B)Ljava/lang/String;

    move-result-object p3

    .line 10
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->c:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 11
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/rtsp/h;->a(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p3

    .line 12
    invoke-static {p3}, Lcom/shabakaty/downloader/sy4;->U([B)Ljava/lang/String;

    move-result-object p3

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v7, 0x5

    if-eqz v0, :cond_0

    const-string v0, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\""

    new-array v7, v7, [Ljava/lang/Object;

    .line 14
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/h$a;->a:Ljava/lang/String;

    aput-object p1, v7, v2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->b:Ljava/lang/String;

    aput-object p1, v7, v3

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->c:Ljava/lang/String;

    aput-object p1, v7, v6

    aput-object p2, v7, v1

    aput-object p3, v7, v5

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/sy4;->n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\", opaque=\"%s\""

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    .line 15
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/h$a;->a:Ljava/lang/String;

    aput-object p1, v8, v2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->b:Ljava/lang/String;

    aput-object p1, v8, v3

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->c:Ljava/lang/String;

    aput-object p1, v8, v6

    aput-object p2, v8, v1

    aput-object p3, v8, v5

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/c;->d:Ljava/lang/String;

    aput-object p1, v8, v7

    invoke-static {v0, v8}, Lcom/shabakaty/downloader/sy4;->n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Lcom/shabakaty/downloader/pa3;

    invoke-direct {p2, v4, p1, v2, v5}, Lcom/shabakaty/downloader/pa3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    .line 17
    throw p2

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 19
    new-instance p2, Lcom/shabakaty/downloader/pa3;

    invoke-direct {p2, v4, p1, v2, v5}, Lcom/shabakaty/downloader/pa3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    .line 20
    throw p2

    .line 21
    :cond_2
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/rtsp/h$a;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/h$a;->b:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result p3

    invoke-static {p1, p3}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/h;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 23
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
