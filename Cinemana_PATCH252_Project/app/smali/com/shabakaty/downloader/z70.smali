.class public final Lcom/shabakaty/downloader/z70;
.super Lcom/shabakaty/downloader/q70;
.source "CompletableObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/z70$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/c80;

.field public final b:Lcom/shabakaty/downloader/wx3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c80;Lcom/shabakaty/downloader/wx3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/q70;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/z70;->a:Lcom/shabakaty/downloader/c80;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/z70;->b:Lcom/shabakaty/downloader/wx3;

    return-void
.end method


# virtual methods
.method public f(Lcom/shabakaty/downloader/a80;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z70;->a:Lcom/shabakaty/downloader/c80;

    new-instance v1, Lcom/shabakaty/downloader/z70$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/z70;->b:Lcom/shabakaty/downloader/wx3;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/z70$a;-><init>(Lcom/shabakaty/downloader/a80;Lcom/shabakaty/downloader/wx3;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/c80;->a(Lcom/shabakaty/downloader/a80;)V

    return-void
.end method
