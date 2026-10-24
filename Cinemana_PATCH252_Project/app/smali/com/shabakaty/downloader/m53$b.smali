.class public final Lcom/shabakaty/downloader/m53$b;
.super Ljava/lang/Object;
.source "ObservableSubscribeOn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/m53;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/m53$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/m53$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic s:Lcom/shabakaty/downloader/m53;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/m53;Lcom/shabakaty/downloader/m53$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/m53$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/m53$b;->s:Lcom/shabakaty/downloader/m53;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/m53$b;->r:Lcom/shabakaty/downloader/m53$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/m53$b;->s:Lcom/shabakaty/downloader/m53;

    iget-object v0, v0, Lcom/shabakaty/downloader/p0;->r:Lcom/shabakaty/downloader/l53;

    iget-object v1, p0, Lcom/shabakaty/downloader/m53$b;->r:Lcom/shabakaty/downloader/m53$a;

    check-cast v0, Lcom/shabakaty/downloader/t43;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t43;->i(Lcom/shabakaty/downloader/q53;)V

    return-void
.end method
