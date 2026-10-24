.class public final Lcom/shabakaty/downloader/oo;
.super Lcom/shabakaty/downloader/fs0;
.source "BuiltInsPackageFragmentImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/no;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/ui3;Lcom/shabakaty/downloader/ko;ZLcom/shabakaty/downloader/nn0;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/fs0;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/ui3;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/as0;)V

    return-void
.end method

.method public static final U0(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Ljava/io/InputStream;Z)Lcom/shabakaty/downloader/oo;
    .locals 9

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/ko;->f:Lcom/shabakaty/downloader/ko;

    invoke-static {p3}, Lcom/shabakaty/downloader/ko;->c(Ljava/io/InputStream;)Lcom/shabakaty/downloader/ko;

    move-result-object v6

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ko;->g:Lcom/shabakaty/downloader/ko;

    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/gm;->b(Lcom/shabakaty/downloader/gm;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/jo;->m:Lcom/shabakaty/downloader/jo;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/d14;->a:Lcom/shabakaty/downloader/t81;

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/ui3;->B:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/q0;

    .line 6
    invoke-virtual {v1, p3, v0}, Lcom/shabakaty/downloader/q0;->d(Ljava/io/InputStream;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/q0;->b(Lcom/shabakaty/downloader/es2;)Lcom/shabakaty/downloader/es2;

    .line 7
    move-object v5, v0

    check-cast v5, Lcom/shabakaty/downloader/ui3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 8
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 9
    new-instance p3, Lcom/shabakaty/downloader/oo;

    const-string v0, "proto"

    invoke-static {v5, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/oo;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/ui3;Lcom/shabakaty/downloader/ko;ZLcom/shabakaty/downloader/nn0;)V

    return-object p3

    .line 10
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Kotlin built-in definition format version is not supported: expected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", actual "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Please update Kotlin"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 13
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p3, p0}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "builtins package fragment for "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/l93;->v:Lcom/shabakaty/downloader/fi1;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->j(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/nu2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
