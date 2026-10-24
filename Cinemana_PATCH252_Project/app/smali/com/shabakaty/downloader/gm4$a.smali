.class public final synthetic Lcom/shabakaty/downloader/gm4$a;
.super Ljava/lang/Object;
.source "TextViewBindingAdapters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/gm4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/shabakaty/downloader/su;->com$shabakaty$cinemana$domain$models$local$WatchStatus$s$values()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput v2, v0, v1

    aput v1, v0, v2

    sput-object v0, Lcom/shabakaty/downloader/gm4$a;->a:[I

    return-void
.end method
