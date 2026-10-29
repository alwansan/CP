package com.shabakaty.downloader;

import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.ui.home_fragment.HomeItem;
import com.shabakaty.cinemana.ui.home_fragment.SliderView;
import java.util.List;

/* JADX INFO: compiled from: SliderView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class w84 extends af2 implements rm1<uu1> {
    public final /* synthetic */ SliderView r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w84(SliderView sliderView) {
        super(0);
        this.r = sliderView;
    }

    @Override // com.shabakaty.downloader.rm1
    public uu1 invoke() {
        HomeItem.Slider sliderItem = this.r.getSliderItem();
        List<VideoModel> list = sliderItem == null ? null : sliderItem.videos;
        if (list == null) {
            list = w21.r;
        }
        return new uu1(list, this.r);
    }
}
