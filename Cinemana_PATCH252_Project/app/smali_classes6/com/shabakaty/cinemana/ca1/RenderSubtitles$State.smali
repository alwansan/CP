.class final Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;
.super Ljava/lang/Object;
.source "RenderSubtitles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/RenderSubtitles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation


# instance fields
.field decoder:Ljava/lang/Object;

.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/ca1/RenderSubtitles$Entry;",
            ">;"
        }
    .end annotation
.end field

.field eos:Z

.field format:Ljava/lang/Object;

.field last:Ljava/util/List;

.field position:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->entries:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->last:Ljava/util/List;

    .line 36
    return-void
.end method
