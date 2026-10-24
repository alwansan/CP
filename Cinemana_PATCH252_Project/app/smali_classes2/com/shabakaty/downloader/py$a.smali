.class public final Lcom/shabakaty/downloader/py$a;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/py;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:I

.field public static final synthetic b:Lcom/shabakaty/downloader/py$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/py$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/py$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/py$a;->b:Lcom/shabakaty/downloader/py$a;

    const-string v0, "kotlinx.coroutines.channels.defaultBuffer"

    const/16 v1, 0x40

    const/4 v2, 0x1

    const v3, 0x7ffffffe

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/rm3;->u(Ljava/lang/String;III)I

    move-result v0

    sput v0, Lcom/shabakaty/downloader/py$a;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
