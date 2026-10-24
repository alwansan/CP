.class public final Lcom/shabakaty/downloader/p32;
.super Ljava/lang/Object;
.source "InvalidModuleException.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/j61;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/j61<",
            "Lcom/shabakaty/downloader/q32;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "InvalidModuleNotifier"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/p32;->a:Lcom/shabakaty/downloader/j61;

    return-void
.end method
