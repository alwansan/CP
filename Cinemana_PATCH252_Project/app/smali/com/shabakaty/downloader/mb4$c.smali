.class public final Lcom/shabakaty/downloader/mb4$c;
.super Lcom/shabakaty/downloader/af2;
.source "StaffInfoViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/mb4;-><init>(Lcom/shabakaty/downloader/kb4;Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/al2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/ob4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/mb4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mb4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/mb4$c;->r:Lcom/shabakaty/downloader/mb4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mb4$c;->r:Lcom/shabakaty/downloader/mb4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ib4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ib4;->j0()Lcom/shabakaty/downloader/ob4;

    move-result-object v0

    return-object v0
.end method
