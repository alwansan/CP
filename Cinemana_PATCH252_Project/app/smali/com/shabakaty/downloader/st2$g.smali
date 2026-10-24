.class public final Lcom/shabakaty/downloader/st2$g;
.super Lcom/shabakaty/downloader/af2;
.source "MiscBindingAdapter.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ln1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/st2;->h(Lcom/skydoves/powerspinner/PowerSpinnerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/w63;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/ln1<",
        "Ljava/lang/Integer;",
        "TT;",
        "Ljava/lang/Integer;",
        "TT;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/w63;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/w63;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/st2$g;->r:Lcom/shabakaty/downloader/w63;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/st2$g;->r:Lcom/shabakaty/downloader/w63;

    invoke-interface {p2, p4, p1}, Lcom/shabakaty/downloader/w63;->a(Ljava/lang/Object;I)V

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
