.class public final Lcom/shabakaty/downloader/tf4$b;
.super Lcom/shabakaty/downloader/af2;
.source "SubscriptionsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/tf4;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Landroidx/recyclerview/widget/n;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/tf4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tf4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/tf4$b;->r:Lcom/shabakaty/downloader/tf4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/n;

    iget-object v1, p0, Lcom/shabakaty/downloader/tf4$b;->r:Lcom/shabakaty/downloader/tf4;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/tf4;->x:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/s52;

    .line 3
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/n;-><init>(Landroidx/recyclerview/widget/n$d;)V

    return-object v0
.end method
