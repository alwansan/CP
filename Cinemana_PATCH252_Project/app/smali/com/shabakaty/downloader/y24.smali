.class public final Lcom/shabakaty/downloader/y24;
.super Ljava/lang/Object;
.source "SettingsEntity.kt"


# static fields
.field public static final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "#AA000000"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/shabakaty/downloader/y24;->a:I

    return-void
.end method
