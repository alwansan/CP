.class public final Lcom/shabakaty/downloader/v25;
.super Ljava/lang/Throwable;
.source "Throwables.kt"


# static fields
.field public static final r:Lcom/shabakaty/downloader/v25;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/v25;

    invoke-direct {v0}, Lcom/shabakaty/downloader/v25;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/v25;->r:Lcom/shabakaty/downloader/v25;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Epom video link is blank, please provide a valid url"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method
