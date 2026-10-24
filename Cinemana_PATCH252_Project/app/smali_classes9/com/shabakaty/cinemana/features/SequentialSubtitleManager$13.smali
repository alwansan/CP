.class Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$13;
.super Ljava/lang/Object;
.source "SequentialSubtitleManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->filesForTree(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;)I
    .locals 0

    .line 856
    iget-object p1, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 854
    check-cast p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;

    check-cast p2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$13;->compare(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;)I

    move-result p1

    return p1
.end method
