.class public Lcom/shabakaty/downloader/cr;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ph1;

.field public final synthetic s:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dr;Lcom/shabakaty/downloader/ph1;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/cr;->r:Lcom/shabakaty/downloader/ph1;

    iput p3, p0, Lcom/shabakaty/downloader/cr;->s:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr;->r:Lcom/shabakaty/downloader/ph1;

    iget v1, p0, Lcom/shabakaty/downloader/cr;->s:I

    check-cast v0, Lcom/shabakaty/downloader/mu4$a;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/mu4$a;->a:Lcom/shabakaty/downloader/rs3$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/rs3$c;->d(I)V

    :cond_0
    return-void
.end method
