.class public final Lcom/shabakaty/downloader/fg4$a;
.super Lcom/shabakaty/downloader/fg4;
.source "SettingsEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/fg4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/fg4$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/fg4$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/fg4$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/fg4$a;->c:Lcom/shabakaty/downloader/fg4$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x4

    const v1, 0x7f1200d2

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/shabakaty/downloader/fg4;-><init>(IILcom/shabakaty/downloader/nn0;)V

    return-void
.end method
