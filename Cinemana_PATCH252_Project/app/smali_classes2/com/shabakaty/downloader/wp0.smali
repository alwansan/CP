.class public abstract Lcom/shabakaty/downloader/wp0;
.super Lcom/shabakaty/downloader/mr0;
.source "DescriptorVisibility.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/y45;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y45;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/mr0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wp0;->a:Lcom/shabakaty/downloader/y45;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/y45;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wp0;->a:Lcom/shabakaty/downloader/y45;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wp0;->a:Lcom/shabakaty/downloader/y45;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/y45;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/shabakaty/downloader/mr0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wp0;->a:Lcom/shabakaty/downloader/y45;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/y45;->c()Lcom/shabakaty/downloader/y45;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/lr0;->h(Lcom/shabakaty/downloader/y45;)Lcom/shabakaty/downloader/mr0;

    move-result-object v0

    return-object v0
.end method
