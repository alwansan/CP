.class final Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;
.super Ljava/lang/Object;
.source "SequentialSubtitleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubtitleFile"
.end annotation


# instance fields
.field final alternateUri:Ljava/lang/Object;

.field final extension:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final uri:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1425
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1426
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1428
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->extension:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->uri:Ljava/lang/Object;

    iput-object p4, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->alternateUri:Ljava/lang/Object;

    .line 1429
    return-void
.end method
