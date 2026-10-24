.class public final Lcom/shabakaty/downloader/zf5;
.super Lcom/shabakaty/downloader/rg7;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/shabakaty/downloader/s14;",
        ">",
        "Lcom/shabakaty/downloader/rg7;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/z14;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/z14<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/z14;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/z14<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/rg7;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zf5;->a:Lcom/shabakaty/downloader/z14;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/zf5;->b:Ljava/lang/Class;

    return-void
.end method
