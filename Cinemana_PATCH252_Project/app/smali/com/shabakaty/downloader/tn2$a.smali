.class public Lcom/shabakaty/downloader/tn2$a;
.super Lcom/shabakaty/downloader/u63;
.source "MaterialTextInputPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/tn2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/u63<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/tn2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tn2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/tn2$a;->a:Lcom/shabakaty/downloader/tn2;

    invoke-direct {p0}, Lcom/shabakaty/downloader/u63;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tn2$a;->a:Lcom/shabakaty/downloader/tn2;

    iget-object v0, v0, Lcom/shabakaty/downloader/hc3;->r:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/u63;

    .line 2
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/u63;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
