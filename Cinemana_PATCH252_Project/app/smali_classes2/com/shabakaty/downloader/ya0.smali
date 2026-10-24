.class public final Lcom/shabakaty/downloader/ya0;
.super Ljava/lang/Object;
.source "ConnectInterceptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/w22;


# static fields
.field public static final a:Lcom/shabakaty/downloader/ya0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ya0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ya0;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ya0;->a:Lcom/shabakaty/downloader/ya0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;
    .locals 11

    const-string v0, "chain"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/vn3;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/vn3;->b:Lcom/shabakaty/downloader/pn3;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-boolean v1, v0, Lcom/shabakaty/downloader/pn3;->C:Z

    if-eqz v1, :cond_3

    .line 6
    iget-boolean v1, v0, Lcom/shabakaty/downloader/pn3;->B:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 7
    iget-boolean v1, v0, Lcom/shabakaty/downloader/pn3;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 8
    monitor-exit v0

    .line 9
    iget-object v1, v0, Lcom/shabakaty/downloader/pn3;->w:Lcom/shabakaty/downloader/g61;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 10
    iget-object v10, v0, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    const-string v3, "client"

    .line 11
    invoke-static {v10, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :try_start_1
    iget v4, p1, Lcom/shabakaty/downloader/vn3;->g:I

    .line 13
    iget v5, p1, Lcom/shabakaty/downloader/vn3;->h:I

    .line 14
    iget v6, p1, Lcom/shabakaty/downloader/vn3;->i:I

    .line 15
    iget v7, v10, Lcom/shabakaty/downloader/a63;->S:I

    .line 16
    iget-boolean v8, v10, Lcom/shabakaty/downloader/a63;->w:Z

    .line 17
    iget-object v3, p1, Lcom/shabakaty/downloader/vn3;->f:Lcom/shabakaty/downloader/vr3;

    .line 18
    iget-object v3, v3, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    const-string v9, "GET"

    .line 19
    invoke-static {v3, v9}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v9, v3, 0x1

    move-object v3, v1

    .line 20
    invoke-virtual/range {v3 .. v9}, Lcom/shabakaty/downloader/g61;->a(IIIIZZ)Lcom/shabakaty/downloader/tn3;

    move-result-object v3

    .line 21
    invoke-virtual {v3, v10, p1}, Lcom/shabakaty/downloader/tn3;->l(Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/vn3;)Lcom/shabakaty/downloader/f61;

    move-result-object v3
    :try_end_1
    .catch Lcom/shabakaty/downloader/lu3; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    new-instance v4, Lcom/shabakaty/downloader/e61;

    iget-object v5, v0, Lcom/shabakaty/downloader/pn3;->s:Lcom/shabakaty/downloader/o51;

    invoke-direct {v4, v0, v5, v1, v3}, Lcom/shabakaty/downloader/e61;-><init>(Lcom/shabakaty/downloader/pn3;Lcom/shabakaty/downloader/o51;Lcom/shabakaty/downloader/g61;Lcom/shabakaty/downloader/f61;)V

    .line 23
    iput-object v4, v0, Lcom/shabakaty/downloader/pn3;->z:Lcom/shabakaty/downloader/e61;

    .line 24
    iput-object v4, v0, Lcom/shabakaty/downloader/pn3;->E:Lcom/shabakaty/downloader/e61;

    .line 25
    monitor-enter v0

    .line 26
    :try_start_2
    iput-boolean v2, v0, Lcom/shabakaty/downloader/pn3;->A:Z

    .line 27
    iput-boolean v2, v0, Lcom/shabakaty/downloader/pn3;->B:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    monitor-exit v0

    .line 29
    iget-boolean v0, v0, Lcom/shabakaty/downloader/pn3;->D:Z

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3d

    move-object v1, p1

    move-object v3, v4

    move-object v4, v0

    .line 30
    invoke-static/range {v1 .. v8}, Lcom/shabakaty/downloader/vn3;->c(Lcom/shabakaty/downloader/vn3;ILcom/shabakaty/downloader/e61;Lcom/shabakaty/downloader/vr3;IIII)Lcom/shabakaty/downloader/vn3;

    move-result-object v0

    .line 31
    iget-object p1, p1, Lcom/shabakaty/downloader/vn3;->f:Lcom/shabakaty/downloader/vr3;

    .line 32
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/vn3;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v0

    throw p1

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/g61;->c(Ljava/io/IOException;)V

    .line 36
    new-instance v0, Lcom/shabakaty/downloader/lu3;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/lu3;-><init>(Ljava/io/IOException;)V

    throw v0

    :catch_1
    move-exception p1

    .line 37
    iget-object v0, p1, Lcom/shabakaty/downloader/lu3;->r:Ljava/io/IOException;

    .line 38
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/g61;->c(Ljava/io/IOException;)V

    .line 39
    throw p1

    :cond_1
    :try_start_3
    const-string p1, "Check failed."

    .line 40
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "Check failed."

    .line 41
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "released"

    .line 42
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 43
    monitor-exit v0

    throw p1
.end method
