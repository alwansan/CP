.class public abstract Lcom/shabakaty/downloader/ys3;
.super Ljava/lang/Object;
.source "ResponseBody.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ys3$a;,
        Lcom/shabakaty/downloader/ys3$b;
    }
.end annotation


# static fields
.field public static final s:Lcom/shabakaty/downloader/ys3$b;


# instance fields
.field public r:Ljava/io/Reader;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/ys3$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ys3$b;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/ys3;->s:Lcom/shabakaty/downloader/ys3$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final e(Lcom/shabakaty/downloader/fr2;[B)Lcom/shabakaty/downloader/ys3;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zn;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zn;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zn;->D([B)Lcom/shabakaty/downloader/zn;

    .line 3
    array-length p1, p1

    int-to-long v1, p1

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/zs3;

    invoke-direct {p1, v0, p0, v1, v2}, Lcom/shabakaty/downloader/zs3;-><init>(Lcom/shabakaty/downloader/eo;Lcom/shabakaty/downloader/fr2;J)V

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ys3;->f()Lcom/shabakaty/downloader/eo;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/eo;->y()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final b()[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ys3;->c()J

    move-result-wide v0

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ys3;->f()Lcom/shabakaty/downloader/eo;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-interface {v2}, Lcom/shabakaty/downloader/eo;->U()[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    array-length v2, v4

    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-eqz v3, :cond_1

    int-to-long v5, v2

    cmp-long v3, v0, v5

    if-nez v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") disagree"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    return-object v4

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 6
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot buffer entire body for content length: "

    invoke-static {v3, v0, v1}, Lcom/shabakaty/downloader/kp0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract c()J
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ys3;->f()Lcom/shabakaty/downloader/eo;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->d(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract d()Lcom/shabakaty/downloader/fr2;
.end method

.method public abstract f()Lcom/shabakaty/downloader/eo;
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ys3;->f()Lcom/shabakaty/downloader/eo;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ys3;->d()Lcom/shabakaty/downloader/fr2;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/shabakaty/downloader/hz;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/fr2;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/hz;->b:Ljava/nio/charset/Charset;

    .line 3
    :goto_0
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ry4;->s(Lcom/shabakaty/downloader/eo;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/eo;->z0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
