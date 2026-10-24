.class public final Lcom/shabakaty/downloader/lw2;
.super Ljava/lang/Object;
.source "NameUtils.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/mq3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mq3;

    const-string v1, "[^\\p{L}\\p{Digit}]"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/mq3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/lw2;->a:Lcom/shabakaty/downloader/mq3;

    return-void
.end method
