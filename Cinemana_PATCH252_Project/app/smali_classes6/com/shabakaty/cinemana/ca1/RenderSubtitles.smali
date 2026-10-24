.class public final Lcom/shabakaty/cinemana/ca1/RenderSubtitles;
.super Ljava/lang/Object;
.source "RenderSubtitles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;,
        Lcom/shabakaty/cinemana/ca1/RenderSubtitles$Entry;
    }
.end annotation


# static fields
.field static final states:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->states:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active(Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;)Ljava/util/List;
    .locals 9

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 100
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$Entry;

    .line 102
    iget-wide v3, v2, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$Entry;->end:J

    iget-wide v5, p0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->position:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 105
    :cond_0
    iget-object v3, v2, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$Entry;->subtitle:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->position:J

    iget-wide v7, v2, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$Entry;->offset:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "j"

    invoke-static {v3, v2, v4}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 106
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 107
    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    :cond_1
    :goto_1
    goto :goto_0

    .line 111
    :cond_2
    return-object v0
.end method

.method public static begin(Ljava/lang/Object;J)V
    .locals 8

    .line 44
    const-string v0, "K"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    const-string v1, "C"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->supported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->reset(Ljava/lang/Object;)V

    return-void

    .line 47
    :cond_0
    const-string v2, "L"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 48
    sget-object v3, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->states:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;

    .line 49
    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->decoder:Ljava/lang/Object;

    if-ne v5, v2, :cond_1

    iget-object v5, v4, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->format:Ljava/lang/Object;

    if-ne v5, v0, :cond_1

    iget-wide v5, v4, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->position:J

    cmp-long v7, p1, v5

    if-gez v7, :cond_2

    .line 50
    :cond_1
    new-instance v4, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;

    invoke-direct {v4}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;-><init>()V

    iput-object v2, v4, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->decoder:Ljava/lang/Object;

    iput-object v0, v4, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->format:Ljava/lang/Object;

    .line 51
    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mime="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " position_us="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "subtitle_track_ready"

    invoke-static {v1, p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    :cond_2
    iput-wide p1, v4, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->position:J

    .line 55
    return-void
.end method

.method static capture(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;)V
    .locals 9

    .line 65
    const-string v0, "J"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    const-string v0, "N"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 69
    const-string v0, "t"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 70
    const-string v0, "u"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 71
    if-eqz v2, :cond_6

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 74
    :cond_1
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 75
    iget-object p0, p1, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->entries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$Entry;

    .line 76
    iget-object v1, v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$Entry;->subtitle:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    iget-wide v0, v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$Entry;->offset:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    .line 77
    return-void

    .line 79
    :cond_2
    goto :goto_0

    .line 80
    :cond_3
    const-string p0, "n"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 81
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 82
    check-cast p0, Ljava/lang/Integer;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    .line 84
    return-void

    .line 86
    :cond_4
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v0

    const-string p0, "h"

    invoke-static {v2, p0, v5}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 87
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 88
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v7, v0, v3

    .line 89
    iget-wide v0, p1, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->position:J

    cmp-long p0, v7, v0

    if-lez p0, :cond_5

    .line 90
    iget-object p0, p1, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->entries:Ljava/util/List;

    new-instance v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$Entry;

    move-object v1, v0

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$Entry;-><init>(Ljava/lang/Object;JJ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "samples="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->entries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " end_us="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "subtitle_sample_retained"

    invoke-static {v0, p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    :cond_5
    return-void

    .line 72
    :cond_6
    :goto_1
    return-void
.end method

.method public static finish(Ljava/lang/Object;)V
    .locals 7

    .line 130
    sget-object v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->states:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;

    .line 131
    if-nez v0, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    const-string v1, "J"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 135
    :cond_1
    const-string v1, "Q"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 136
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "A"

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 137
    check-cast v1, Ljava/lang/Long;

    .line 138
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    iget-wide v2, v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->position:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 139
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->reset(Ljava/lang/Object;)V

    .line 140
    return-void

    .line 143
    :cond_2
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->capture(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;)V

    .line 144
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->active(Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;)Ljava/util/List;

    move-result-object v1

    .line 145
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "H"

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 146
    iput-boolean v4, v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->eos:Z

    .line 148
    :cond_3
    iget-boolean v2, v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->eos:Z

    if-eqz v2, :cond_4

    .line 149
    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v3, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    :cond_4
    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->last:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    return-void

    .line 154
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->last:Ljava/util/List;

    .line 155
    const-string v2, "C"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 156
    instance-of v3, v2, Landroid/os/Handler;

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    .line 157
    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 159
    :cond_6
    const-string v2, "D"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const-string v3, "W"

    invoke-static {p0, v3, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " position_us="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-wide v0, v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->position:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "subtitle_active_changed"

    invoke-static {v1, p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    return-void
.end method

.method public static merge(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 115
    sget-object v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->states:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;

    .line 116
    if-nez v0, :cond_0

    .line 117
    return-object p1

    .line 119
    :cond_0
    const-string v1, "J"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 120
    :cond_1
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->capture(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;)V

    .line 121
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->active(Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;)Ljava/util/List;

    move-result-object p0

    .line 122
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "active="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " position_us="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->position:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "subtitle_samples_merged"

    invoke-static {v2, p1, v1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles$State;->last:Ljava/util/List;

    .line 126
    return-object p0
.end method

.method public static reset(Ljava/lang/Object;)V
    .locals 1

    .line 40
    sget-object v0, Lcom/shabakaty/cinemana/ca1/RenderSubtitles;->states:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public static supported(Ljava/lang/String;)Z
    .locals 1

    .line 58
    const-string v0, "application/x-subrip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text/x-ssa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text/vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static switching(Ljava/lang/Object;)V
    .locals 2

    .line 62
    const-string p0, "automatic_overlap=true"

    const/4 v0, 0x0

    const-string v1, "subtitle_track_switch"

    invoke-static {v1, p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method
