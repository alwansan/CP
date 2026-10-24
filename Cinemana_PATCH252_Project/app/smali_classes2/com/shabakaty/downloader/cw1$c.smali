.class public Lcom/shabakaty/downloader/cw1$c;
.super Lcom/shabakaty/downloader/cw1$b;
.source "HttpConnection.java"

# interfaces
.implements Lcom/shabakaty/downloader/cb0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/cw1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/cw1$b<",
        "Lcom/shabakaty/downloader/cb0;",
        ">;",
        "Lcom/shabakaty/downloader/cb0;"
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:Z

.field public h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/ab0;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Lcom/shabakaty/downloader/n56;

.field public k:Z

.field public l:Z

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/cw1$b;-><init>(Lcom/shabakaty/downloader/cw1$a;)V

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/cw1$c;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/cw1$c;->k:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/cw1$c;->l:Z

    const-string v1, "UTF-8"

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/cw1$c;->m:Ljava/lang/String;

    const/16 v1, 0x7530

    .line 6
    iput v1, p0, Lcom/shabakaty/downloader/cw1$c;->e:I

    const/high16 v1, 0x100000

    .line 7
    iput v1, p0, Lcom/shabakaty/downloader/cw1$c;->f:I

    .line 8
    iput-boolean v0, p0, Lcom/shabakaty/downloader/cw1$c;->g:Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/cw1$c;->h:Ljava/util/Collection;

    .line 10
    sget-object v0, Lcom/shabakaty/downloader/bb0;->s:Lcom/shabakaty/downloader/bb0;

    iput-object v0, p0, Lcom/shabakaty/downloader/cw1$b;->b:Lcom/shabakaty/downloader/bb0;

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/cw1$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/za0;

    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36"

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/cw1$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/za0;

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/n56;

    new-instance v1, Lcom/shabakaty/downloader/mv1;

    invoke-direct {v1}, Lcom/shabakaty/downloader/mv1;-><init>()V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/n56;-><init>(Lcom/shabakaty/downloader/cr4;)V

    .line 14
    iput-object v0, p0, Lcom/shabakaty/downloader/cw1$c;->j:Lcom/shabakaty/downloader/n56;

    return-void
.end method
