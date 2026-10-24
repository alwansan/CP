.class final Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;
.super Ljava/lang/Object;
.source "SequentialSubtitleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkInfo"
.end annotation


# instance fields
.field final episode:Ljava/lang/String;

.field final episodeRaw:Ljava/lang/String;

.field final key:Ljava/lang/String;

.field final kind:Ljava/lang/String;

.field final season:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1416
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->kind:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    .line 1417
    iput-object p5, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episodeRaw:Ljava/lang/String;

    iput-object p6, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->season:Ljava/lang/String;

    .line 1418
    return-void
.end method
