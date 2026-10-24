.class public final Lcom/shabakaty/downloader/wb2$a;
.super Lcom/shabakaty/downloader/wb2;
.source "methodSignatureMapping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wb2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final j:Lcom/shabakaty/downloader/wb2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wb2;)V
    .locals 1

    const-string v0, "elementType"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/wb2;-><init>(Lcom/shabakaty/downloader/nn0;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/wb2$a;->j:Lcom/shabakaty/downloader/wb2;

    return-void
.end method
