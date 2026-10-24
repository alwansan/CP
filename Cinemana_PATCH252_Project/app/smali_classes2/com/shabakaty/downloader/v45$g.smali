.class public final Lcom/shabakaty/downloader/v45$g;
.super Lcom/shabakaty/downloader/y45;
.source "Visibilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/v45;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/v45$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/v45$g;

    invoke-direct {v0}, Lcom/shabakaty/downloader/v45$g;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/v45$g;->c:Lcom/shabakaty/downloader/v45$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "protected"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/y45;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
