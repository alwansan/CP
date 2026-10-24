.class public final Lcom/shabakaty/epom_view/ui/EpomView$e$b;
.super Lcom/shabakaty/downloader/af2;
.source "EpomView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/epom_view/ui/EpomView$e;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/f41$e;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/epom_view/ui/EpomView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/epom_view/ui/EpomView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$e$b;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/f41$e;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$e$b;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    sget v0, Lcom/shabakaty/epom_view/ui/EpomView;->T:I

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/epom_view/ui/EpomView;->w()V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
