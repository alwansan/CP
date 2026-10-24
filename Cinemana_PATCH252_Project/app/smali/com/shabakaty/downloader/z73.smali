.class public Lcom/shabakaty/downloader/z73;
.super Ljava/lang/Object;
.source "OperationImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/x73;


# instance fields
.field public final c:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/downloader/x73$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/g24;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/g24<",
            "Lcom/shabakaty/downloader/x73$b$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/xv2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xv2;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/z73;->c:Lcom/shabakaty/downloader/xv2;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/g24;

    invoke-direct {v0}, Lcom/shabakaty/downloader/g24;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/z73;->d:Lcom/shabakaty/downloader/g24;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/x73;->b:Lcom/shabakaty/downloader/x73$b$b;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/z73;->a(Lcom/shabakaty/downloader/x73$b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/x73$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z73;->c:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/x73$b$c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/z73;->d:Lcom/shabakaty/downloader/g24;

    check-cast p1, Lcom/shabakaty/downloader/x73$b$c;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/g24;->j(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/x73$b$a;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/x73$b$a;

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/z73;->d:Lcom/shabakaty/downloader/g24;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/x73$b$a;->a:Ljava/lang/Throwable;

    .line 8
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/g24;->k(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method
