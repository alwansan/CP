.class public final Lcom/shabakaty/downloader/hm4;
.super Lcom/shabakaty/downloader/af2;
.source "TextViewBindingAdapters.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/cinemana/domain/models/local/Category;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shabakaty/downloader/hm4;->r:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/Category;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/hm4;->r:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/Category;->enTitle:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/Category;->arTitle:Ljava/lang/String;

    :goto_0
    return-object p1
.end method
