.class public Lcom/shabakaty/downloader/xl2;
.super Ljava/lang/Object;
.source "MainThreadAsyncHandler.java"

# interfaces
.implements Lcom/shabakaty/downloader/j31;


# static fields
.field public static volatile r:Landroid/os/Handler;

.field public static s:Lcom/shabakaty/downloader/xl2;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p1

    if-eqz v0, :cond_5

    .line 2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    add-int/lit8 v4, p1, 0x1

    .line 3
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-lt v0, v5, :cond_1

    add-int/lit8 v6, p1, 0x2

    .line 4
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x4

    if-lt v0, v7, :cond_2

    add-int/2addr p1, v5

    .line 5
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    :cond_2
    shl-int/lit8 p0, v1, 0x12

    shl-int/lit8 p1, v4, 0xc

    add-int/2addr p0, p1

    shl-int/lit8 p1, v6, 0x6

    add-int/2addr p0, p1

    add-int/2addr p0, v3

    shr-int/lit8 p1, p0, 0x10

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lt v0, v2, :cond_3

    .line 8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-lt v0, v5, :cond_4

    .line 9
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "StringBuilder must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e()Landroid/os/Handler;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/xl2;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/xl2;->r:Landroid/os/Handler;

    return-object v0

    .line 3
    :cond_0
    const-class v0, Lcom/shabakaty/downloader/xl2;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/xl2;->r:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/yr1;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/xl2;->r:Landroid/os/Handler;

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/xl2;->r:Landroid/os/Handler;

    return-object v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/shabakaty/downloader/tx4;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "en"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/tx4$b;->b:Lcom/shabakaty/downloader/tx4$b;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/tx4$a;->b:Lcom/shabakaty/downloader/tx4$a;

    :goto_0
    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/tx4;)Ljava/lang/String;
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/tx4;->a:Ljava/lang/String;

    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/n31;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n31;->d()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n31;->b()C

    move-result v1

    const/16 v6, 0x20

    if-lt v1, v6, :cond_1

    const/16 v6, 0x3f

    if-gt v1, v6, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v6, 0x40

    if-lt v1, v6, :cond_2

    const/16 v6, 0x5e

    if-gt v1, v6, :cond_2

    add-int/lit8 v1, v1, -0x40

    int-to-char v1, v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :goto_0
    iget v1, p1, Lcom/shabakaty/downloader/n31;->f:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/shabakaty/downloader/n31;->f:I

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 8
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/xl2;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v6, p1, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p1, Lcom/shabakaty/downloader/n31;->a:Ljava/lang/String;

    .line 12
    iget v6, p1, Lcom/shabakaty/downloader/n31;->f:I

    invoke-static {v1, v6, v3}, Lcom/shabakaty/downloader/iq6;->s(Ljava/lang/CharSequence;II)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 13
    iput v5, p1, Lcom/shabakaty/downloader/n31;->g:I

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {v1}, Lcom/shabakaty/downloader/iq6;->j(C)V

    throw v4

    :cond_3
    :goto_1
    const/16 v1, 0x1f

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_3

    :cond_4
    const/4 v6, 0x2

    if-ne v1, v2, :cond_6

    .line 17
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n31;->e()V

    .line 18
    iget-object v7, p1, Lcom/shabakaty/downloader/n31;->h:Lcom/shabakaty/downloader/bj4;

    .line 19
    iget v7, v7, Lcom/shabakaty/downloader/bj4;->b:I

    .line 20
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n31;->a()I

    move-result v8

    sub-int/2addr v7, v8

    .line 21
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n31;->c()I

    move-result v8

    if-le v8, v7, :cond_5

    .line 22
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n31;->a()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {p1, v7}, Lcom/shabakaty/downloader/n31;->f(I)V

    .line 23
    iget-object v7, p1, Lcom/shabakaty/downloader/n31;->h:Lcom/shabakaty/downloader/bj4;

    .line 24
    iget v7, v7, Lcom/shabakaty/downloader/bj4;->b:I

    .line 25
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n31;->a()I

    move-result v9

    sub-int/2addr v7, v9

    :cond_5
    if-gt v8, v7, :cond_6

    if-gt v7, v6, :cond_6

    goto :goto_3

    :cond_6
    if-gt v1, v3, :cond_a

    sub-int/2addr v1, v2

    .line 26
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/xl2;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n31;->d()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_7

    if-gt v1, v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    if-gt v1, v6, :cond_8

    .line 28
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n31;->a()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/n31;->f(I)V

    .line 29
    iget-object v3, p1, Lcom/shabakaty/downloader/n31;->h:Lcom/shabakaty/downloader/bj4;

    .line 30
    iget v3, v3, Lcom/shabakaty/downloader/bj4;->b:I

    .line 31
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n31;->a()I

    move-result v6

    sub-int/2addr v3, v6

    const/4 v6, 0x3

    if-lt v3, v6, :cond_8

    .line 32
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n31;->a()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/n31;->f(I)V

    const/4 v2, 0x0

    :cond_8
    if-eqz v2, :cond_9

    .line 33
    iput-object v4, p1, Lcom/shabakaty/downloader/n31;->h:Lcom/shabakaty/downloader/bj4;

    .line 34
    iget v0, p1, Lcom/shabakaty/downloader/n31;->f:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/shabakaty/downloader/n31;->f:I

    goto :goto_3

    .line 35
    :cond_9
    iget-object v1, p1, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_3
    iput v5, p1, Lcom/shabakaty/downloader/n31;->g:I

    return-void

    .line 37
    :cond_a
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Count must not exceed 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 38
    iput v5, p1, Lcom/shabakaty/downloader/n31;->g:I

    .line 39
    throw v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
