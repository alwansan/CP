.class public final Lcom/shabakaty/downloader/ia3$b;
.super Lcom/shabakaty/downloader/ia3;
.source "SettingsEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ia3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final d:Lcom/shabakaty/downloader/ia3$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ia3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ia3$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ia3$b;->d:Lcom/shabakaty/downloader/ia3$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "0"

    const v1, 0x7f1200cb

    const v2, 0x7f080155

    const/4 v3, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/shabakaty/downloader/ia3;-><init>(Ljava/lang/String;IILcom/shabakaty/downloader/nn0;)V

    return-void
.end method
