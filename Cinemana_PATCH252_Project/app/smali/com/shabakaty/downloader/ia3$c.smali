.class public final Lcom/shabakaty/downloader/ia3$c;
.super Lcom/shabakaty/downloader/ia3;
.source "SettingsEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ia3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final d:Lcom/shabakaty/downloader/ia3$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ia3$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ia3$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ia3$c;->d:Lcom/shabakaty/downloader/ia3$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "2"

    const v1, 0x7f120129

    const v2, 0x7f080156

    const/4 v3, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/shabakaty/downloader/ia3;-><init>(Ljava/lang/String;IILcom/shabakaty/downloader/nn0;)V

    return-void
.end method
