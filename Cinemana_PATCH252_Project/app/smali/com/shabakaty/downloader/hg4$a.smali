.class public final Lcom/shabakaty/downloader/hg4$a;
.super Lcom/shabakaty/downloader/hg4;
.source "SettingsEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/hg4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/hg4$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/hg4$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hg4$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/hg4$a;->c:Lcom/shabakaty/downloader/hg4$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/high16 v0, 0x40400000    # 3.0f

    const v1, 0x7f120158

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/shabakaty/downloader/hg4;-><init>(FILcom/shabakaty/downloader/nn0;)V

    return-void
.end method
