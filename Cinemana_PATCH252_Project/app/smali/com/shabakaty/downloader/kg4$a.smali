.class public final Lcom/shabakaty/downloader/kg4$a;
.super Lcom/shabakaty/downloader/af2;
.source "SubtitleFontsBottomSheet.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/kg4;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/String;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/kg4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kg4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/kg4$a;->r:Lcom/shabakaty/downloader/kg4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/kg4$a;->r:Lcom/shabakaty/downloader/kg4;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/kg4;->I:Lcom/shabakaty/downloader/tm1;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/kg4$a;->r:Lcom/shabakaty/downloader/kg4;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/b;->X1()V

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
