.class public Lcom/shabakaty/downloader/wu0$a;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wu0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public r:Lcom/shabakaty/downloader/v31$a;

.field public s:Ljava/nio/charset/Charset;

.field public t:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field

.field public u:I

.field public v:Z

.field public w:I

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/v31$a;->w:Lcom/shabakaty/downloader/v31$a;

    iput-object v0, p0, Lcom/shabakaty/downloader/wu0$a;->r:Lcom/shabakaty/downloader/v31$a;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/wu0$a;->t:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/wu0$a;->v:Z

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/wu0$a;->w:I

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/wu0$a;->x:I

    const-string v0, "UTF8"

    .line 7
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/wu0$a;->s:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/wu0$a;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wu0$a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/wu0$a;->s:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/wu0$a;->s:Ljava/nio/charset/Charset;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/wu0$a;->r:Lcom/shabakaty/downloader/v31$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/v31$a;->valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/v31$a;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/wu0$a;->r:Lcom/shabakaty/downloader/v31$a;

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()Ljava/nio/charset/CharsetEncoder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wu0$a;->s:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/wu0$a;->t:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US-ASCII"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "UTF-"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 6
    :goto_0
    iput v1, p0, Lcom/shabakaty/downloader/wu0$a;->u:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu0$a;->a()Lcom/shabakaty/downloader/wu0$a;

    move-result-object v0

    return-object v0
.end method
