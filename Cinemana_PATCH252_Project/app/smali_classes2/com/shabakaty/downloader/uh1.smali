.class public Lcom/shabakaty/downloader/uh1;
.super Lcom/shabakaty/downloader/k21;
.source "FormElement.java"


# instance fields
.field public final z:Lcom/shabakaty/downloader/m21;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kk4;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/k21;-><init>(Lcom/shabakaty/downloader/kk4;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/m21;

    invoke-direct {p1}, Lcom/shabakaty/downloader/m21;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/uh1;->z:Lcom/shabakaty/downloader/m21;

    return-void
.end method


# virtual methods
.method public y(Lcom/shabakaty/downloader/sz2;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/sz2;->y(Lcom/shabakaty/downloader/sz2;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/uh1;->z:Lcom/shabakaty/downloader/m21;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
