.class public final Lcom/shabakaty/downloader/xh1;
.super Lcom/shabakaty/downloader/kn3;
.source "FormatException.java"


# static fields
.field public static final t:Lcom/shabakaty/downloader/xh1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xh1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xh1;-><init>()V

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/xh1;->t:Lcom/shabakaty/downloader/xh1;

    sget-object v1, Lcom/shabakaty/downloader/kn3;->s:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/kn3;-><init>()V

    return-void
.end method
