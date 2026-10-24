.class public Lzendesk/messaging/ui/UtilsAttachment;
.super Ljava/lang/Object;
.source "UtilsAttachment.java"


# direct methods
.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    mul-long p1, p1, v0

    const-wide/16 v0, 0x400

    .line 2
    div-long/2addr p1, v0

    div-long/2addr p1, v0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
