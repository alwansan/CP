.class public Lcom/shabakaty/downloader/r32;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/r32$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/shabakaty/downloader/r32$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/r32$a;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/r32$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lcom/shabakaty/downloader/r32;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/r32;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/r32;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Lcom/shabakaty/downloader/r32;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/r32;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/r32;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
