.class public final Lcom/shabakaty/downloader/gg4$i;
.super Lcom/shabakaty/downloader/gg4;
.source "Fonts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/gg4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# static fields
.field public static final e:Lcom/shabakaty/downloader/gg4$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/gg4$i;

    invoke-direct {v0}, Lcom/shabakaty/downloader/gg4$i;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/gg4$i;->e:Lcom/shabakaty/downloader/gg4$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "Frutiger Lt"

    const-string v1, "fonts/FrutigerLTArabic-55Roman.ttf"

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/shabakaty/downloader/gg4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    return-void
.end method
