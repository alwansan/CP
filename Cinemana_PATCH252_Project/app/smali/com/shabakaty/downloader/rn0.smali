.class public final Lcom/shabakaty/downloader/rn0;
.super Ljava/lang/Object;
.source "DefaultDataSourceFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/vl0$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/shabakaty/downloader/sp4;

.field public final c:Lcom/shabakaty/downloader/vl0$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mo0$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/mo0$b;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/mo0$b;->b:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/rn0;->a:Landroid/content/Context;

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/rn0;->b:Lcom/shabakaty/downloader/sp4;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/rn0;->c:Lcom/shabakaty/downloader/vl0$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/vl0$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/rn0;->a:Landroid/content/Context;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/rn0;->b:Lcom/shabakaty/downloader/sp4;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/rn0;->c:Lcom/shabakaty/downloader/vl0$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/vl0;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qn0;

    iget-object v1, p0, Lcom/shabakaty/downloader/rn0;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/shabakaty/downloader/rn0;->c:Lcom/shabakaty/downloader/vl0$a;

    .line 2
    invoke-interface {v2}, Lcom/shabakaty/downloader/vl0$a;->a()Lcom/shabakaty/downloader/vl0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/qn0;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/vl0;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/rn0;->b:Lcom/shabakaty/downloader/sp4;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qn0;->e(Lcom/shabakaty/downloader/sp4;)V

    :cond_0
    return-object v0
.end method
