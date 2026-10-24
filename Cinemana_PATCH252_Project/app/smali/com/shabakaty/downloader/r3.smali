.class public final Lcom/shabakaty/downloader/r3;
.super Lcom/shabakaty/downloader/o3;
.source "ActivityResultContracts.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/o3<",
        "Landroid/content/Intent;",
        "Lcom/shabakaty/downloader/m3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/o3;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 1
    check-cast p2, Landroid/content/Intent;

    return-object p2
.end method

.method public c(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/m3;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/m3;-><init>(ILandroid/content/Intent;)V

    return-object v0
.end method
